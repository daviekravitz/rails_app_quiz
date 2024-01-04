class JobsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def create
		# provide form data to method DO NOT HARDCODE LIKE THIS LOL
		@job = Job.new(
			url: 'google.com',
			employer_name: 'google',
			employer_description: 'Google LLC is an American multinational technology company focusing on artificial intelligence,[9] online advertising, search engine technology, cloud computing, computer software, quantum computing, e-commerce, and consumer electronics.',
			job_title: 'Jr. Cloud Engineer',
			job_description: 'n/a',
			years_of_experience: '3',
			education_requirement: 'bachelors',
			industry: 'Tech',
			base_salary: 80000,
			employment_type_id: 3
		)

		if @job.save
			render json: { success: true }
		else
			render json: { success: false }
		end
	end

	def index

	    @jobs = Job.all

	    render json: { jobs: @jobs }

  	end

	def show

		@job = Job.find_by(id: params[:id])

		if @job
			render json: { job: @job }
		end

	end

	def destroy

		@job = Job.find_by(id: params[:id])

		if @job and @job.destroy
			render json: { success: true }
		else
			render json: { success: false }
		end

	end

end
